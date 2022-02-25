package com.demo.core.job;

import com.demo.core.product.service.DemoVariantProductService;
import de.hybris.platform.catalog.enums.ArticleApprovalStatus;
import de.hybris.platform.commerceservices.setup.SetupSyncJobService;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.cronjob.enums.CronJobResult;
import de.hybris.platform.cronjob.enums.CronJobStatus;
import de.hybris.platform.cronjob.model.CronJobModel;
import de.hybris.platform.servicelayer.cronjob.AbstractJobPerformable;
import de.hybris.platform.servicelayer.cronjob.PerformResult;
import de.hybris.platform.servicelayer.model.ModelService;
import de.hybris.platform.util.Config;
import org.apache.log4j.Logger;

import javax.annotation.Resource;
import java.util.List;


public class ApprovalStatusUpdateJob extends AbstractJobPerformable<CronJobModel> {

    @Resource
    DemoVariantProductService demoVariantProductService;

    @Resource
    ModelService modelService;

    @Resource
    private SetupSyncJobService setupSyncJobService;

    private static final Logger LOG = Logger.getLogger(ApprovalStatusUpdateJob.class);
    private static final String PRODUCT_CATALOG = Config.getString("productcatalogname", "demoProductCatalog");

    @Override
    public PerformResult perform(CronJobModel cronJobModel) {

        List<ProductModel> product = demoVariantProductService.getProductModel();

        for (ProductModel productModel : product) {
            if (productModel.getApprovalStatus() != ArticleApprovalStatus.APPROVED) {
                productModel.setApprovalStatus(ArticleApprovalStatus.APPROVED);
                modelService.save(productModel);

                LOG.info(productModel.getName() + "is Approved");

                setupSyncJobService.createProductCatalogSyncJob(PRODUCT_CATALOG);
                setupSyncJobService.executeCatalogSyncJob(PRODUCT_CATALOG);
            }
        }
        return new PerformResult(CronJobResult.SUCCESS, CronJobStatus.FINISHED);
    }
}
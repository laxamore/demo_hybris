/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package com.demo.initialdata.setup;

import de.hybris.platform.commerceservices.dataimport.impl.CoreDataImportService;
import de.hybris.platform.commerceservices.dataimport.impl.SampleDataImportService;
import de.hybris.platform.commerceservices.setup.AbstractSystemSetup;
import de.hybris.platform.commerceservices.setup.data.ImportData;
import de.hybris.platform.commerceservices.setup.events.CoreDataImportedEvent;
import de.hybris.platform.commerceservices.setup.events.SampleDataImportedEvent;
import de.hybris.platform.core.initialization.SystemSetup;
import de.hybris.platform.core.initialization.SystemSetup.Process;
import de.hybris.platform.core.initialization.SystemSetup.Type;
import de.hybris.platform.core.initialization.SystemSetupContext;
import de.hybris.platform.core.initialization.SystemSetupParameter;
import de.hybris.platform.core.initialization.SystemSetupParameterMethod;
import de.hybris.platform.util.Config;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Required;
import com.demo.initialdata.constants.DemoInitialDataConstants;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/**
 * This class provides hooks into the system's initialization and update processes.
 */
@SystemSetup(extension = DemoInitialDataConstants.EXTENSIONNAME)
public class InitialDataSystemSetup extends AbstractSystemSetup {
    @SuppressWarnings("unused")
    private static final Logger LOG = Logger.getLogger(InitialDataSystemSetup.class);

    private static final String DEMO = "demo";

    private static final String DEMO_ESSENTIAL_DATA_IMPEXES = "demoinitialdata.essentialdata.impexes";

    private static final String DEMO_SAMPLE_DATA_IMPEXES = "demoinitialdata.sampledata.impexes";

    private static final String IMPORT_CORE_DATA = "importCoreData";
    private static final String IMPORT_SAMPLE_DATA = "importSampleData";
    private static final String ACTIVATE_SOLR_CRON_JOBS = "activateSolrCronJobs";

    private CoreDataImportService coreDataImportService;
    private SampleDataImportService sampleDataImportService;

    /**
     * Generates the Dropdown and Multi-select boxes for the project data import
     */
    @Override
    @SystemSetupParameterMethod
    public List<SystemSetupParameter> getInitializationOptions() {
        final List<SystemSetupParameter> params = new ArrayList<SystemSetupParameter>();

        params.add(createBooleanSystemSetupParameter(IMPORT_CORE_DATA, "Import Core Data", true));
        params.add(createBooleanSystemSetupParameter(IMPORT_SAMPLE_DATA, "Import Sample Data", true));
        params.add(createBooleanSystemSetupParameter(ACTIVATE_SOLR_CRON_JOBS, "Activate Solr Cron Jobs", true));
        // Add more Parameters here as you require

        return params;
    }

    @SystemSetup(type = Type.ESSENTIAL, process = Process.ALL)
    public void createEssentialData(final SystemSetupContext context) {
        // Add Essential Data here as you require
    }

    @SystemSetup(type = Type.PROJECT, process = Process.ALL)
    public void createProjectData(final SystemSetupContext context) {
        /*
         * Add import data for each site you have configured
         */
        LOG.info("::: Demo Project Data Update. :::");
        final List<ImportData> importData = new ArrayList<>();

        final ImportData sampleImportData = new ImportData();
        sampleImportData.setProductCatalogName(DEMO);
        sampleImportData.setContentCatalogNames(Arrays.asList(DEMO));
        sampleImportData.setStoreNames(Arrays.asList(DEMO));
        importData.add(sampleImportData);

        // Core data
        final boolean importCoreData = getBooleanSystemSetupParameter(context, IMPORT_CORE_DATA);
        if (importCoreData) {
            getCoreDataImportService().execute(this, context, importData);

            importDemoCoreData(context);

            getEventService().publishEvent(new CoreDataImportedEvent(context, importData));
            getCoreDataImportService().synchronizeContentCatalog(this, context, DEMO, true);
            getCoreDataImportService().synchronizeProductCatalog(this, context, DEMO, true);
        }

        // Sample data
        final boolean importSampleData = getBooleanSystemSetupParameter(context, IMPORT_SAMPLE_DATA);
        if (importSampleData) {
            getSampleDataImportService().execute(this, context, importData);

            importDemoSampleData(context);

            getEventService().publishEvent(new SampleDataImportedEvent(context, importData));
            getSampleDataImportService().synchronizeContentCatalog(this, context, DEMO, true);
            getSampleDataImportService().synchronizeProductCatalog(this, context, DEMO, true);
        }
    }

    /**
     * Custom method to import the demo core data.
     *
     * @param context context
     */
    private void importDemoCoreData(final SystemSetupContext context) {
        final String extensionName = context.getExtensionName();
        final String impexFiles = Config.getParameter(DEMO_ESSENTIAL_DATA_IMPEXES);
        if (impexFiles != null) {
            final String[] impexFileArray = impexFiles.split(",");
            for (final String impexFile : impexFileArray) {
                if (impexFile != null) {
                    getSetupImpexService().importImpexFile(String.format("/%s/import/coredata/contentCatalogs/%sContentCatalog/%s",
                            extensionName, DEMO, impexFile), false);
                    getSetupImpexService().importImpexFile(String.format("/%s/import/coredata/productCatalogs/%sProductCatalog/%s",
                            extensionName, DEMO, impexFile), false);
                    getSetupImpexService().importImpexFile(String.format("/%s/import/coredata/common/%s", extensionName, impexFile),
                            false);
                    getSetupImpexService().importImpexFile(String.format("/%s/import/coredata/stores/demo/%s", extensionName, impexFile),
                            false);
                }
            }
        }
    }

    /**
     * Custom method to import the demo sample data.
     *
     * @param context the context
     */
    private void importDemoSampleData(final SystemSetupContext context) {
        final String extensionName = context.getExtensionName();
        final String impexFiles = Config.getParameter(DEMO_SAMPLE_DATA_IMPEXES);
        if (impexFiles != null) {
            final String[] impexFileArray = impexFiles.split(",");
            for (final String impexFile : impexFileArray) {
                if (impexFile != null) {
                    getSetupImpexService().importImpexFile(String.format("/%s/import/sampledata/contentCatalogs/%sContentCatalog/%s",
                            extensionName, DEMO, impexFile), false);
                    getSetupImpexService().importImpexFile(String.format("/%s/import/sampledata/productCatalogs/%sProductCatalog/%s",
                            extensionName, DEMO, impexFile), false);
                    getSetupImpexService().importImpexFile(
                            String.format("/%s/import/sampledata/stores/demo/%s", extensionName, impexFile), false);
                }
            }
        }
    }

    public CoreDataImportService getCoreDataImportService() {
        return coreDataImportService;
    }

    @Required
    public void setCoreDataImportService(final CoreDataImportService coreDataImportService) {
        this.coreDataImportService = coreDataImportService;
    }

    public SampleDataImportService getSampleDataImportService() {
        return sampleDataImportService;
    }

    @Required
    public void setSampleDataImportService(final SampleDataImportService sampleDataImportService) {
        this.sampleDataImportService = sampleDataImportService;
    }
}

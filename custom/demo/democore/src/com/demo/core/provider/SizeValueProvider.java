package com.demo.core.provider;

import com.demo.core.model.DemoVariantProductModel;
import de.hybris.platform.solrfacetsearch.config.IndexConfig;
import de.hybris.platform.solrfacetsearch.config.IndexedProperty;
import de.hybris.platform.solrfacetsearch.config.exceptions.FieldValueProviderException;
import de.hybris.platform.solrfacetsearch.provider.FieldNameProvider;
import de.hybris.platform.solrfacetsearch.provider.FieldValue;
import de.hybris.platform.solrfacetsearch.provider.FieldValueProvider;
import de.hybris.platform.solrfacetsearch.provider.impl.AbstractPropertyFieldValueProvider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class SizeValueProvider extends AbstractPropertyFieldValueProvider implements FieldValueProvider {


    private FieldNameProvider fieldNameProvider;

    @Override
    public Collection<FieldValue> getFieldValues(IndexConfig indexConfig, IndexedProperty indexedProperty, Object model) throws FieldValueProviderException {

        if(model instanceof DemoVariantProductModel){
            final DemoVariantProductModel product = (DemoVariantProductModel) model;
            final Collection<FieldValue> fieldValues = new ArrayList<>();
            fieldValues.addAll(createFieldValue(product, indexedProperty));
            return fieldValues;
        } else {
            throw new FieldValueProviderException("Cannot get code!");
        }
    }

    public List<FieldValue> createFieldValue(final DemoVariantProductModel product, final IndexedProperty indexedProperty){

        final List<FieldValue> fieldValues = new ArrayList<FieldValue>();
        final Collection<String> fieldNames = getFieldNameProvider().getFieldNames(indexedProperty, null);
        if(null != product.getSize()){
            for(final String fieldName : fieldNames){
                fieldValues.add(new FieldValue(fieldName, product.getSize()));
            }
        }
        return fieldValues;

    }

    public FieldNameProvider getFieldNameProvider(){
        return fieldNameProvider;
    }
    public void setFieldNameProvider(final FieldNameProvider fieldNameProvider)
    {
        this.fieldNameProvider = fieldNameProvider;
    }
}

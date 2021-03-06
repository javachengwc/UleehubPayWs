/**
 * 
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.uleehub.common.entity.search.exception;

/**
 * <p>User: mtwu
 * <p>Date: 13-1-17 上午11:44
 * <p>Version: 1.0
 */
public final class InvalidSearchPropertyException extends SearchException {

    public InvalidSearchPropertyException(String searchProperty, String entityProperty) {
        this(searchProperty, entityProperty, null);
    }

    public InvalidSearchPropertyException(String searchProperty, String entityProperty, Throwable cause) {
        super("Invalid Search Property [" + searchProperty + "] Entity Property [" + entityProperty + "]", cause);
    }


}

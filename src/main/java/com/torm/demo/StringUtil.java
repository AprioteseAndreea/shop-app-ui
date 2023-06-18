package com.torm.demo;

public class StringUtil {
    private StringUtil() {
        // Private constructor to prevent instantiation
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }
}

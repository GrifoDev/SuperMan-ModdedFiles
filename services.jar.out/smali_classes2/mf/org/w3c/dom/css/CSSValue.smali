.class public interface abstract Lmf/org/w3c/dom/css/CSSValue;
.super Ljava/lang/Object;
.source "CSSValue.java"


# static fields
.field public static final CSS_CUSTOM:S = 0x3s

.field public static final CSS_INHERIT:S = 0x0s

.field public static final CSS_PRIMITIVE_VALUE:S = 0x1s

.field public static final CSS_VALUE_LIST:S = 0x2s


# virtual methods
.method public abstract getCssText()Ljava/lang/String;
.end method

.method public abstract getCssValueType()S
.end method

.method public abstract setCssText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

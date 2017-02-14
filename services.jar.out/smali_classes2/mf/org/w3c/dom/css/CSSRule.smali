.class public interface abstract Lmf/org/w3c/dom/css/CSSRule;
.super Ljava/lang/Object;
.source "CSSRule.java"


# static fields
.field public static final CHARSET_RULE:S = 0x2s

.field public static final FONT_FACE_RULE:S = 0x5s

.field public static final IMPORT_RULE:S = 0x3s

.field public static final MEDIA_RULE:S = 0x4s

.field public static final PAGE_RULE:S = 0x6s

.field public static final STYLE_RULE:S = 0x1s

.field public static final UNKNOWN_RULE:S


# virtual methods
.method public abstract getCssText()Ljava/lang/String;
.end method

.method public abstract getParentRule()Lmf/org/w3c/dom/css/CSSRule;
.end method

.method public abstract getParentStyleSheet()Lmf/org/w3c/dom/css/CSSStyleSheet;
.end method

.method public abstract getType()S
.end method

.method public abstract setCssText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

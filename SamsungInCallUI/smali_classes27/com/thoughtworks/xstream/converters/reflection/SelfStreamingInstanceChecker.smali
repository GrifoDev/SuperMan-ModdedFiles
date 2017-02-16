.class public Lcom/thoughtworks/xstream/converters/reflection/SelfStreamingInstanceChecker;
.super Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;
.source "SelfStreamingInstanceChecker.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultConverter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p2, "xstream"    # Ljava/lang/Object;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;-><init>(Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

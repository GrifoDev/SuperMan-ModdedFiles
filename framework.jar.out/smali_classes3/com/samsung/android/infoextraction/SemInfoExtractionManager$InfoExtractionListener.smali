.class public interface abstract Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;
.super Ljava/lang/Object;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoExtractionListener"
.end annotation


# virtual methods
.method public abstract onCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/infoextraction/SemExtractedInfo;",
            ">;)V"
        }
    .end annotation
.end method

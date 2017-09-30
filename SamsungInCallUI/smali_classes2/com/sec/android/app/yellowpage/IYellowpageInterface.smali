.class public interface abstract Lcom/sec/android/app/yellowpage/IYellowpageInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/yellowpage/IYellowpageInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFilefromYP(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShopNameFromNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasUpdate()Z
.end method

.method public abstract initialize_3rdlib()V
.end method

.method public abstract queryListByYellowPage(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/yellowpage/YPSearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unInitialize_3rdlib()V
.end method

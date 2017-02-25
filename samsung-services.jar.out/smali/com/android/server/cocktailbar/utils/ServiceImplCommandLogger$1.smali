.class Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;
.super Landroid/util/LruCache;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;->this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;->sizeOf(Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/settings/utils/ServiceListing$1;
.super Landroid/database/ContentObserver;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ServiceListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ServiceListing;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/utils/ServiceListing$1;->this$0:Lcom/android/settings/utils/ServiceListing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/ServiceListing$1;->this$0:Lcom/android/settings/utils/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ServiceListing;->reload()Ljava/util/List;

    return-void
.end method

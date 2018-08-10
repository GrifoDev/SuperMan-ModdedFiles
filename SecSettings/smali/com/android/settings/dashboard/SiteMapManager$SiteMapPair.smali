.class Lcom/android/settings/dashboard/SiteMapManager$SiteMapPair;
.super Ljava/lang/Object;
.source "SiteMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SiteMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SiteMapPair"
.end annotation


# instance fields
.field public final childClass:Ljava/lang/String;

.field public final childTitle:Ljava/lang/String;

.field public final parentClass:Ljava/lang/String;

.field public final parentTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/SiteMapManager$SiteMapPair;->parentClass:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/dashboard/SiteMapManager$SiteMapPair;->parentTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/dashboard/SiteMapManager$SiteMapPair;->childClass:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/SiteMapManager$SiteMapPair;->childTitle:Ljava/lang/String;

    return-void
.end method

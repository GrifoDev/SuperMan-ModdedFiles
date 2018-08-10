.class Landroid/support/v17/leanback/system/Settings$Customizations;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/system/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Customizations"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/system/Settings$Customizations;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Landroid/support/v17/leanback/system/Settings$Customizations;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/system/Settings$Customizations;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v2, "bool"

    iget-object v3, p0, Landroid/support/v17/leanback/system/Settings$Customizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/system/Settings$Customizations;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    :cond_0
    return p2
.end method

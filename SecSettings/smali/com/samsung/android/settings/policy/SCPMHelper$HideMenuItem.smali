.class Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
.super Ljava/lang/Object;
.source "SCPMHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/policy/SCPMHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideMenuItem"
.end annotation


# instance fields
.field public mHideMenuKey:Ljava/lang/String;

.field public mProjectName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    return-void
.end method

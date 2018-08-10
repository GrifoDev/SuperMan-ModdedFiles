.class public abstract Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

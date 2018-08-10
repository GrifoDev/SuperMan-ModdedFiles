.class public Landroid/support/v17/leanback/app/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/support/v17/leanback/app/PermissionHelper23;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

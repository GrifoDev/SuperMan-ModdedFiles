.class final Lcom/android/settings/AppHeader$1;
.super Ljava/lang/Object;
.source "AppHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$includeAppInfo:Z

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(ZLjava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/AppHeader$1;->val$includeAppInfo:Z

    iput-object p2, p0, Lcom/android/settings/AppHeader$1;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/AppHeader$1;->val$uid:I

    iput-object p4, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/AppHeader$1;->val$includeAppInfo:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, p0, Lcom/android/settings/AppHeader$1;->val$pkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/AppHeader$1;->val$uid:I

    iget-object v4, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0b13da

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

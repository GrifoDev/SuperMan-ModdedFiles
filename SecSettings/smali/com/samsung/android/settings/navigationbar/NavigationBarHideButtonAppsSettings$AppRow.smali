.class public Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
.super Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$Row;
.source "NavigationBarHideButtonAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/CharSequence;

.field public mPackage:Ljava/lang/String;

.field public mPolicy:I

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$Row;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$Row;)V

    return-void
.end method

.class public Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mAppName:Ljava/lang/CharSequence;

.field public mAppSurpportsRuntimePermissions:Z

.field public mGranted:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsEnable:Z

.field public mPackageinfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iput-boolean p4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIsEnable:Z

    iput-object p3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    iput-boolean p6, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I

    move-result v0

    return v0
.end method

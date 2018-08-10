.class public Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsActive:Z

.field public mIsChecked:Z

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p5, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsChecked:Z

    iput-boolean p6, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    return-void
.end method

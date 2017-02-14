.class Lcom/samsung/android/settings/activekey/AppList$AppListItem;
.super Ljava/lang/Object;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

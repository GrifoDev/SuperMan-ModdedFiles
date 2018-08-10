.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsEnabled:Z

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mActivityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p6, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    return-void
.end method

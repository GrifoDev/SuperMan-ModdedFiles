.class Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
.super Ljava/lang/Object;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/OneHandViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field key:Ljava/lang/String;

.field summary:I

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    iput v1, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->title:I

    iput v1, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    return-void
.end method

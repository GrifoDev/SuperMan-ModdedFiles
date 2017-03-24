.class public Lcom/android/systemui/rz/LeftLayout;
.super Landroid/widget/LinearLayout;
.source "LeftLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/rz/LeftLayout$1;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "key"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->key:Ljava/lang/String;

    :cond_0
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "key"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->key:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/android/systemui/rz/LeftLayout$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/rz/LeftLayout$1;-><init>(Lcom/android/systemui/rz/LeftLayout;Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->mTicker:Ljava/lang/Runnable;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/rz/LeftLayout;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/android/systemui/rz/LeftLayout;)Ljava/lang/Runnable;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/rz/LeftLayout;->mTicker:Ljava/lang/Runnable;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/rz/LeftLayout;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/rz/LeftLayout;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/android/systemui/rz/LeftLayout;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/rz/LeftLayout;->key:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/android/systemui/rz/LeftLayout;Ljava/lang/Runnable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->mTicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/android/systemui/rz/LeftLayout;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/android/systemui/rz/LeftLayout;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/rz/LeftLayout;->key:Ljava/lang/String;

    return-void
.end method

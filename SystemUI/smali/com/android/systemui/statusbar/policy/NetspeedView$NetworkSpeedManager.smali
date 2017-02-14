.class public Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.super Ljava/lang/Object;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSpeedManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# instance fields
.field private final UPDATE_DATA1:I

.field private final UPDATE_DATA2:I

.field private final UPDATE_VIEW:I

.field private mAfterRxspd:D

.field private mBeforeRxspd:D

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRxspd:D

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mAfterRxspd:D

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mBeforeRxspd:D

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mRxspd:D

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mAfterRxspd:D

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mBeforeRxspd:D

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mRxspd:D

    return-wide p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_VIEW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA1:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA2:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetworkSpeedManager"

    const-string/jumbo v1, "getInstance == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    return-object v0
.end method


# virtual methods
.method public addObserver(Landroid/widget/TextView;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public removeObserver(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

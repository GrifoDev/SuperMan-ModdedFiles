.class public Lcom/samsung/android/contextaware/manager/CaUserInfo;
.super Ljava/lang/Object;
.source "CaUserInfo.java"


# static fields
.field public static final DEFAULT_GENDER:I = 0x1

.field public static final DEFAULT_HEIGHT:D = 170.0

.field public static final DEFAULT_WEIGHT:D = 60.0

.field private static volatile instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;


# instance fields
.field private mUserGender:I

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/samsung/android/contextaware/manager/CaUserInfo;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/CaUserInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 60
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getUserGender()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    return v0
.end method

.method public final getUserHeight()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    return-wide v0
.end method

.method public final getUserWeight()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    return-wide v0
.end method

.method public final setUserGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    .line 116
    return-void
.end method

.method public final setUserHeight(D)V
    .locals 1
    .param p1, "height"    # D

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    .line 78
    return-void
.end method

.method public final setUserWeight(D)V
    .locals 1
    .param p1, "weight"    # D

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    .line 97
    return-void
.end method

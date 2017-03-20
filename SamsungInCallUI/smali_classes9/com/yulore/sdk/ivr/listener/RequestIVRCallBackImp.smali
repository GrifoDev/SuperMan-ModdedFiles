.class public Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;
.super Ljava/lang/Object;
.source "RequestIVRCallBackImp.java"

# interfaces
.implements Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;


# static fields
.field public static final ALL:I = 0x5

.field public static DIFFENT:I = 0x0

.field public static final MF:I = 0x6

.field public static final MO:I = 0x3

.field public static final MT:I = 0x4

.field public static final OP_ERROR:I = 0x8

.field public static final OP_NOTEXIST:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onMismatching(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

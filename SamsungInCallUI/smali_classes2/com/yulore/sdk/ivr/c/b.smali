.class public Lcom/yulore/sdk/ivr/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yulore/sdk/ivr/c/a;


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

    const/4 v0, -0x1

    sput v0, Lcom/yulore/sdk/ivr/c/b;->DIFFENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onMismatching(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

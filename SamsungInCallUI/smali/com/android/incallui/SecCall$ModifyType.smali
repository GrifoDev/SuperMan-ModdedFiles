.class public Lcom/android/incallui/SecCall$ModifyType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifyType"
.end annotation


# static fields
.field public static NONE:I

.field public static RECEIVE:I

.field public static REQUEST:I

.field public static REQUEST_DUMMY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

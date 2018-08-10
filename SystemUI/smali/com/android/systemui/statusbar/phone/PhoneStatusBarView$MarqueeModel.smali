.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarqueeModel"
.end annotation


# instance fields
.field private cpEnd:I

.field private cpStart:I

.field private direction:I

.field private dpBottom:I

.field private dpEnd:I

.field private dpStart:I

.field private dpTop:I

.field private horizontalShift:I

.field private maxShiftSize:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private verticalShift:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpEnd:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpStart:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpBottom:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpEnd:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpStart:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpTop:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->maxShiftSize:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpEnd:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpStart:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpBottom:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpEnd:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpStart:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpTop:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->maxShiftSize:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return-void
.end method

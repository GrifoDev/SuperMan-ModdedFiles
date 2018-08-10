.class Lcom/android/systemui/widget/SystemUIView$ResData;
.super Ljava/lang/Object;
.source "SystemUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResData"
.end annotation


# instance fields
.field private adaptiveColorMain:Ljava/lang/String;

.field private originColor:Ljava/lang/String;

.field private originColorId:I

.field private originImage:Ljava/lang/String;

.field private originImageId:I

.field private themeColor:Ljava/lang/String;

.field private themeColorId:I

.field private themeImage:Ljava/lang/String;

.field private themeImageId:I

.field final synthetic this$0:Lcom/android/systemui/widget/SystemUIView;

.field private whitebgColor:Ljava/lang/String;

.field private whitebgColorId:I

.field private whitebgImage:Ljava/lang/String;

.field private whitebgImageId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->adaptiveColorMain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgImageId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originColorId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originImageId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/widget/SystemUIView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgColorId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->adaptiveColorMain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgColorId:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgImageId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originColorId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->originImageId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeColorId:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/widget/SystemUIView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->themeImageId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->whitebgColor:Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/systemui/widget/SystemUIView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView$ResData;->this$0:Lcom/android/systemui/widget/SystemUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIView;Lcom/android/systemui/widget/SystemUIView$ResData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIView;)V

    return-void
.end method

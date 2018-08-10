.class public Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;
.super Ljava/lang/Object;
.source "CustomUserLED.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DotData"
.end annotation


# instance fields
.field private mDotByteData:C

.field private mDotEnable:Z

.field private mDotImageData:Landroid/widget/ImageButton;

.field private mDotPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;->this$0:Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput-char v0, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;->mDotByteData:C

    iput v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;->mDotPosition:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;->mDotEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ledcovergrace/CustomUserLED$DotData;->mDotImageData:Landroid/widget/ImageButton;

    return-void
.end method

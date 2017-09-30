.class public Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/wrapper/AndroidRWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "styleable"
.end annotation


# static fields
.field public static final SlidingDrawer:[I

.field public static final SlidingDrawer_allowSingleTap:I

.field public static final SlidingDrawer_animateOnClick:I

.field public static final SlidingDrawer_bottomOffset:I

.field public static final SlidingDrawer_content:I

.field public static final SlidingDrawer_handle:I

.field public static final SlidingDrawer_orientation:I

.field public static final SlidingDrawer_topOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$000(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer:[I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_content"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_content:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_handle"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_handle:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_topOffset"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_topOffset:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_bottomOffset"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_bottomOffset:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_orientation"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_orientation:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_allowSingleTap"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_allowSingleTap:I

    const-string v0, "android.R$styleable"

    const-string v1, "SlidingDrawer_animateOnClick"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/AndroidRWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_animateOnClick:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

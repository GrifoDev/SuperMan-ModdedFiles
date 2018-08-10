.class final synthetic Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    iget v1, p0, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;->-$f0:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;->lambda$-android_accessibilityservice_FingerprintGestureController_6679(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;->-$f0:I

    iput-object p2, p0, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;->$m$0()V

    return-void
.end method

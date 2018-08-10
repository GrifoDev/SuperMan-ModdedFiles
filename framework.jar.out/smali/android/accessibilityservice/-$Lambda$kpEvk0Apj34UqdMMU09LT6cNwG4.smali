.class final synthetic Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/AccessibilityButtonController;

    iget-object v1, p0, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$-android_accessibilityservice_AccessibilityButtonController_6699(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;->$m$0()V

    return-void
.end method

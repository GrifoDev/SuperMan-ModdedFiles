.class final synthetic Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/widget/TimePicker;->lambda$-android_widget_TimePicker_4943(Landroid/content/Context;Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;->$m$0(Landroid/widget/TimePicker;II)V

    return-void
.end method

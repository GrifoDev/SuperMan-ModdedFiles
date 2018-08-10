.class final synthetic Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/DatePicker;III)V
    .locals 6

    iget-object v0, p0, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/DatePicker;

    iget-object v1, p0, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/DatePicker;->lambda$-android_widget_DatePicker_6867(Landroid/content/Context;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;->$m$0(Landroid/widget/DatePicker;III)V

    return-void
.end method

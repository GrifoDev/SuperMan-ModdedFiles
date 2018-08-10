.class final synthetic Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->lambda$-com_android_systemui_pip_tv_PipControlsView_8465(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;->$m$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

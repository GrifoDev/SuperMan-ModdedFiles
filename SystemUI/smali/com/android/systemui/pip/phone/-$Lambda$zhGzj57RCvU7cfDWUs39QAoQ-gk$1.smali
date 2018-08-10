.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$-com_android_systemui_pip_phone_PipMenuActivity_20460(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;->$m$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

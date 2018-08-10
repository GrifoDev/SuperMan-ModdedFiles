.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->lambda$-com_android_systemui_pip_phone_PipMediaController_4415(Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;->$m$0(Ljava/util/List;)V

    return-void
.end method

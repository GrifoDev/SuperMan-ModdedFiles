.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->lambda$-com_android_systemui_statusbar_phone_DcmKeyguardLiveUXManager_4175(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;->$m$0(Landroid/net/Uri;)V

    return-void
.end method

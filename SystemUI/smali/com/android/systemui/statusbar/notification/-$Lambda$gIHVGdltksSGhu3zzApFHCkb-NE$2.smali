.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->lambda$-com_android_systemui_statusbar_notification_NotificationInflater_18046(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;->$m$0()V

    return-void
.end method

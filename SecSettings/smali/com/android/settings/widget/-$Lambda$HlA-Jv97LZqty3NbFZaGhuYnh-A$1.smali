.class final synthetic Lcom/android/settings/widget/-$Lambda$HlA-Jv97LZqty3NbFZaGhuYnh-A$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/-$Lambda$HlA-Jv97LZqty3NbFZaGhuYnh-A$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/VideoPreference;->lambda$-com_android_settings_widget_VideoPreference_2649(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$Lambda$HlA-Jv97LZqty3NbFZaGhuYnh-A$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/-$Lambda$HlA-Jv97LZqty3NbFZaGhuYnh-A$1;->$m$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

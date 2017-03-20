.class Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;
.super Ljava/lang/Object;
.source "RichScreenCallCardFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->onCreateRichScreenView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichScreenCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichScreenCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/richscreen/RichScreenCallCardFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;->this$0:Lcom/android/incallui/richscreen/RichScreenCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 156
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 158
    return-void
.end method

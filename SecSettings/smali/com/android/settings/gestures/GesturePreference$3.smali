.class Lcom/android/settings/gestures/GesturePreference$3;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/GesturePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/GesturePreference;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/GesturePreference;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreference$3;->this$0:Lcom/android/settings/gestures/GesturePreference;

    iput-object p2, p0, Lcom/android/settings/gestures/GesturePreference$3;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->val$playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$3;->val$playButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

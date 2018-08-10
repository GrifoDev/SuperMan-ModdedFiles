.class Lcom/samsung/android/settings/flipfont/FontListPreference$14;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$14;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$14;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onCancelButtonPressed()V

    return-void
.end method

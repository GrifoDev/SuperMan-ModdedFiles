.class Lcom/android/settings/DreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$DreamInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->performClick()V

    return-void
.end method

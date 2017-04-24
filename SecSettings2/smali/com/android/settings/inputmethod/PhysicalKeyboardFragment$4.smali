.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    const/4 v0, 0x1

    return v0
.end method

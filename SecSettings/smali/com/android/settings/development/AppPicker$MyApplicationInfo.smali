.class Lcom/android/settings/development/AppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/development/AppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/development/AppPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->this$0:Lcom/android/settings/development/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

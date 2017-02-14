.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;
.super Ljava/lang/Object;
.source "XmlBackup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$saveKey:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$securityLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$filepath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$source:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$saveKey:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;->val$securityLevel:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->-wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

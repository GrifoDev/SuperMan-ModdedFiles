.class public Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsSettingsInfo"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsVersionManager;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->this$0:Lcom/android/server/am/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    return-void
.end method

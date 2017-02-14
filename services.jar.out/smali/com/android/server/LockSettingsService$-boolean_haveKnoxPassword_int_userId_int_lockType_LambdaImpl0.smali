.class final synthetic Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;->val$userId:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;->val$userId:I

    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LockSettingsService;->-com_android_server_LockSettingsService_lambda$1(ILcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    return-object v0
.end method

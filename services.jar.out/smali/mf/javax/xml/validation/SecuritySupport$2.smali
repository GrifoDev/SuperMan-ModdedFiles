.class Lmf/javax/xml/validation/SecuritySupport$2;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/validation/SecuritySupport;

.field private final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/validation/SecuritySupport$2;->this$0:Lmf/javax/xml/validation/SecuritySupport;

    iput-object p2, p0, Lmf/javax/xml/validation/SecuritySupport$2;->val$propName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/validation/SecuritySupport$2;->val$propName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

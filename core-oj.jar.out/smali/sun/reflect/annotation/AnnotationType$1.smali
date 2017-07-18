.class Lsun/reflect/annotation/AnnotationType$1;
.super Ljava/lang/Object;
.source "AnnotationType.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/annotation/AnnotationType;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/reflect/annotation/AnnotationType;

.field final synthetic val$annotationClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lsun/reflect/annotation/AnnotationType;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lsun/reflect/annotation/AnnotationType$1;->this$0:Lsun/reflect/annotation/AnnotationType;

    iput-object p2, p0, Lsun/reflect/annotation/AnnotationType$1;->val$annotationClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/reflect/annotation/AnnotationType$1;->run()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType$1;->val$annotationClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

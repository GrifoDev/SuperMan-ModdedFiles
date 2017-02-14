.class Ljava/io/ObjectInputStream$ValidationList$Callback;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream$ValidationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field next:Ljava/io/ObjectInputStream$ValidationList$Callback;

.field final obj:Ljava/io/ObjectInputValidation;

.field final priority:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    iput p2, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    iput-object p3, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    iput-object p4, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.class Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
.super Ljava/lang/Object;
.source "ParentNode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/ParentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDataRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37313931353437L


# instance fields
.field fData:Ljava/lang/Object;

.field fHandler:Lmf/org/w3c/dom/UserDataHandler;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/ParentNode;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->this$0:Lmf/org/apache/xerces/dom/ParentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    return-void
.end method

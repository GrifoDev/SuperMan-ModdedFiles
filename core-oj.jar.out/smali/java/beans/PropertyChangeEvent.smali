.class public Ljava/beans/PropertyChangeEvent;
.super Ljava/util/EventObject;
.source "PropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x61bcac98a722147bL


# instance fields
.field private newValue:Ljava/lang/Object;

.field private oldValue:Ljava/lang/Object;

.field private propagationId:Ljava/lang/Object;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    iput-object p4, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    iput-object p3, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropagationId()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setPropagationId(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "[propertyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeEvent;->appendTo(Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "; oldValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; propagationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropagationId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

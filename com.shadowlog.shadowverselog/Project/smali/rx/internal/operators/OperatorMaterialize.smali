.class public final Lrx/internal/operators/OperatorMaterialize;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Notification",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMaterialize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorMaterialize$1;-><init>(Lrx/internal/operators/OperatorMaterialize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

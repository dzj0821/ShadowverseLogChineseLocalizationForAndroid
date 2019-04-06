.class public final Lrx/internal/operators/OperatorSerialize;
.super Ljava/lang/Object;
.source "OperatorSerialize.java"

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
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorSerialize;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    new-instance v1, Lrx/internal/operators/OperatorSerialize$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/operators/OperatorSerialize$1;-><init>(Lrx/internal/operators/OperatorSerialize;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-direct {v0, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method

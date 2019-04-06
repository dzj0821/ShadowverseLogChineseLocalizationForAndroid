.class public final Lrx/internal/operators/OperatorMergeDelayError;
.super Lrx/internal/operators/OperatorMerge;
.source "OperatorMergeDelayError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorMerge",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorMergeDelayError;, "Lrx/internal/operators/OperatorMergeDelayError<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorMerge;-><init>(Z)V

    .line 40
    return-void
.end method

struct VertexOutput {
    @builtin(position) position: vec4<f32>,
};

@group(0)
@binding(0)
var<uniform> projection_view_matrix: mat4x4<f32>;

@group(0)
@binding(1)
var<uniform> transform_matrix: mat4x4<f32>;

@vertex
fn vs_main(
    @location(0) position: vec4<f32>,
) -> VertexOutput {
    var result: VertexOutput;

    result.position = projection_view_matrix * transform_matrix * position;

    return result;
}

@fragment
fn fs_main() -> @location(0) vec4<f32> {
    return vec4<f32>(1.0, 0.0, 0.0, 1.0);
}
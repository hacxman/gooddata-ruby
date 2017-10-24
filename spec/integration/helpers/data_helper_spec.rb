# encoding: UTF-8
#
# Copyright (c) 2010-2017 GoodData Corporation. All rights reserved.
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

describe GoodData::Helpers::DataSource do
  let(:config) {
    { 'aws_client' => { 's3_client' => @s3_client } }
  }

  subject do
    GoodData::Helpers::DataSource.new(type: 's3',
                                      bucket: 'mzt-test-bucket',
                                      key: 'small.csv')
  end

  before(:all) do
    creds = YAML.load(File.read('/home/hexo/tmp/creds.txt'))
    @s3_client = Aws::S3::Resource.new(region: 'us-east-2',
                                 access_key_id: creds['access_key_id'],
                                 secret_access_key: creds['secret_access_key'])
  end

  after(:all) do
  end

  it 'downloads file from S3 bucket' do
    subject.realize(config)
  end

end 
